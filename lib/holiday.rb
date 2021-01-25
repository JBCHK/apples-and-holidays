require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  holiday_hash = {
     :winter => {
       :christmas => ["Lights", "Wreath"],
       :new_years => ["Party Hats"]
     },
     :summer => {
       :fourth_of_july => ["Fireworks", "BBQ"]
     },
     :fall => {
      :thanksgiving => ["Turkey"]
    },
     :spring => {
       :memorial_day => ["BBQ"]
     }
   }
   
   holiday_supplies[:summer][:fourth_of_july][1].to_s
  
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter][:christmas] = "Balloons"
  holiday_hash[:winter][:new_years] = "Balloons"
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
    holiday_hash[season][holiday_name] = supply_array
    holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
    holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, data|
    puts "#{season.to_s.capitalize!}:"
     data.each do |holiday_name, supply|
      items = supply.join(", ")
      sub_hash = holiday_name.to_s.split("_")
      final_hash = []
      sub_hash.each {|element| final_hash << element.capitalize!}
      holidays = sub_hash.join(" ")
      puts "  #{holidays}: #{items}"
     end
  end
end       



def all_holidays_with_bbq(holiday_hash)
  bbq_holidays = []
  holiday_hash.each do |season, data|
    data.each do |holiday_name, values|
      values.each do|supply|
        if supply == "BBQ"
          bbq_holidays << holiday_name
        end
      end
    end
  end
bbq_holidays
end








