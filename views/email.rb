require './views/base'

module Views
  class Email < Base
    needs :name
    needs :email
    needs :phone
    needs :company
    needs :partysize
    needs :eventdate
    needs :starttime
    needs :endtime
    needs :description

    def content
      html do
        div { text "Name: #{name}" }
        div { text "Email: #{email}" }
        div { text "Phone: #{phone}" }
        div { text "Company: #{company}" }
        div { text "Party Size: #{partysize}" }
        div { text "Event Date: #{eventdate}" }
        div { text "Start Time: #{starttime}" }
        div { text "End Time: #{endtime}" }
        div { text "Description: #{description}" }
      end
    end

  end
end
