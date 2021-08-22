def json_hash(object)
  JSON.parse(object.to_json).deep_symbolize_keys
end