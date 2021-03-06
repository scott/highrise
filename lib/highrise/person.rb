module Highrise
  class Person < Subject
    include Pagination
  
    def self.find_all_across_pages_since(time)
      find_all_across_pages(:params => { :since => time.to_s(:db).gsub(/[^\d]/, '') })
    end
  
    def company
      Company.find(company_id) if company_id
    end
  
    def name
      "#{first_name} #{last_name}".strip
    end
  end
end  
