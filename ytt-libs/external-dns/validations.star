load("@ytt:data", "data")
load("@ytt:assert", "assert")

data.values.provider or assert.fail("missing provider")

if data.values.provider == "aws":
  data.values.aws.accessKey or assert.fail("missing aws.accessKey")
end