module Java
  module Lang
    class String
      NSUTF8StringEncoding = 'UTF-8'

      def to_base64(enc=NSUTF8StringEncoding)
        data = text.getBytes(enc)
        String base64 = Android::Util::Base64.encodeToString(data, Android::Util::Base64.DEFAULT)
      end

      def self.from_base64(base64_str, enc=NSUTF8StringEncoding)
        data = Android::Util::Base64.decode(base64, Android::Util::Base64::DEFAULT)
        String.new(data, enc)
      end

    end
  end
end
