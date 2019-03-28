class DorController < ApplicationController
  protect_from_forgery with: :null_session
  skip_before_action :verify_authenticity_token, only: :home

  def home; end

  def caller
    puts "caller triggered"
    message = JSON.parse(request.body.read)["message"]
    return unless message == "hi"
    puts "successful trigger"
    actioned
    render json: { response: "received" }, status: :accepted
  end

  private

  def actioned
    puts 'success -----------------------------------------------------------------------------------------'
    value = [15.minutes, 1, 1.hour, 2.hours].sample
    puts "sleeping: #{value}"
    sleep(value)

    # users = User.where(done: false).sample(10)

    # crypt = ActiveSupport::MessageEncryptor.new(ENV['KEY'])

    # username = crypt.decrypt_and_verify('mILn8Ae0Ozzzk02lcCE0MoYrcUiUib/IvUAPsQjK5A==--FcjuU1CNjlsA6yoC--rKinnyTS0NC53gPiQFXkLg==')
    # password = crypt.decrypt_and_verify('iwm3T1wCiLj10BBseOhNKg==--1PrYKRRhF3MkFGj9--82PzoFRlalCoExihPUkN7A==')

    # # Authenticate and Navigate to the Form
    # mechanize = Mechanize.new
    # login_page = mechanize.get 'https://www.lesclefsdor.net/login'



    # form = login_page.forms[0]
    # form.field_with(name: '_username').value = username
    # form.field_with(name: '_password').value = password

    # sleep(rand(1..30))

    # page = form.submit


    # # Inside / logged-in
    # users.each do |user|
    #   sleep(rand(1..30))
    #   page = mechanize.get(user.link)
    #   sleep(rand(1..30))
    #   new_page = page.parser
    #   sleep(rand(1..30))
    #   # Do the thing
    #   name = new_page.css('#span_firstname_name').first.text.strip
    #   # status = new_page.
    #   position = new_page.css("span[title='Position']").first.text.strip
    #   all_links = new_page.css("a")
    #   section = all_links.select {|l| l[:href].start_with?('https://www.lesclefsdor.net/Section/') }.first.text.strip
    #   section_position_span = new_page.at_css(".section_title")

    #   section_position_span.present? ? section_position = section_position_span.text.strip : section_position = ""
    #   hotel = all_links.select { |l| l[:href].start_with?('https://www.lesclefsdor.net/Hotel/') }.first.text.strip
    #   address_and_infos = new_page.at_css('#memberHotel').text.strip
    #   infos_array = address_and_infos.split("\n")
    #   # infos_array.each_with_index do |e, index|
    #   # end
    #   country = infos_array[8].strip
    #   address = "#{infos_array[6].strip}, #{infos_array[7].strip}, #{country}"
    #   infos_array[13].strip == "- Hotel" ? hotel_phone = "" : hotel_phone = infos_array[13].strip.chomp(' - Hotel')
    #   infos_array[14].strip == "- Concierge" ? phone = "" : phone = infos_array[14].strip.chomp(' - Concierge')
    #   infos_array[15].blank? ? fax = "" : fax = infos_array[15].strip
    #   email_pro = new_page.at_css("i[title='E-mail pro']").next_element.text.strip
    #   infos_array[16].blank? ? email = "" : email = infos_array[16].strip
    #   website = new_page.at_css("i[title='Website']").next_element.text.strip
    #   cd_params = {
    #     name: name,
    #     position: position,
    #     section: section,
    #     section_position: section_position,
    #     hotel: hotel,
    #     hotel_phone: hotel_phone,
    #     phone: phone,
    #     address: address,
    #     email_pro: email_pro,
    #     email: email,
    #     website: website,
    #     country: country
    #   }
    #   sleep(rand(1..30))
    #   if Contact.create(cd_params)
    #     user.update(done: true)
    #     puts "created."
    #   end
    # end
  end
end
