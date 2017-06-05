class Settings
  extend Mixlib::Config

  config_context :mongoid do
    default(:uri, 'mongodb://localhost:27017/stack_commerce')
  end

  config_context :twitter do
    default(:consumer_key, 'FZAAPji7xCyHcNbLJVkudj3ul')
    default(:consumer_secret, 'VRyCaUFK1t7RnvCRc4MlVy7GuNlRTWTUnja1KmQ0rxcxrBUtXg')
    default(:access_token, '995884075-4A67GbYzlmqk82tzLAVMWIteZ3U6ZHpgQwLq5lns')
    default(:access_token_secret, 'QpWhw7N46PViD6CzFS60drnV8KaP5knXiLIFtn1yXaSSl')
  end
end
