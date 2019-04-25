# For all methods, refer to the properties of the CloudFormation CodeBuild::Project https://amzn.to/2UTeNlr

name("demo")
github_location("https://github.com/tongueroo/demo-ufo")
github_token(ssm("/codebuild/github/oauth_token")) # Note: you have to set this parameter in your own accounts ssm parameter store
linux_image("aws/codebuild/ruby:2.5.3-1.7.0")
environment_variables(
  UFO_ENV: "development",
  # Example of ssm parameter for enviroment variables, this is different because it's part of the cloudformatio template
  # API_KEY: "ssm:/codebuild/demo/api_key"
)
