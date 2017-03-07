require "pry"

def nyc_pigeon_organizer(data)
	pigeon_list = {}

	data[:lives].each do |location, pigeons|
		pigeons.each do |pigeon|
			pigeon_list[pigeon] = {color: [], gender: [], lives: []}
		end
	end

	pigeon_list.each do |pigeon, info|
		data.each do |attribute, values|
			values.each do |value, pigeon_names|
				pigeon_names.each do |pigeon_name|
					if pigeon_name == pigeon
						pigeon_list[pigeon][attribute] << value.to_s
					end
				end
			end
		end
	end

	pigeon_list
end
