require 'aws-sdk-s3'

class AwsInfoController < ApplicationController

  def view
    s3 = Aws::S3::Resource.new(region: 'us-east-1')

    @arr = []

    s3.buckets.limit(50).each do |b|
      @arr.push(b)
    end
  end

  def view_detail
    params.each do |key, value |
      Rails.logger.warn "Param #{key}: #{value}"
    end
    @s3 = Aws::S3::Resource.new(region: 'us-east-1')

    @bucket = @s3.bucket(params[:name])

    @bucket.objects

  end
end
