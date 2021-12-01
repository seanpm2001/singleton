
String.class_eval <<-LOCALIZE, __FILE__, __LINE__ + 1
          def to_plural_s(locale, arg)
            num_str = SgtnClient::Formatters::PluralFormatter.new(locale).num_s(self, arg)
            if num_str.nil? || num_str.empty?
              self.localize(locale) % arg
            else
              num_str
            end
          end
        LOCALIZE