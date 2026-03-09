module IndonesiaCalendar
  module Holidays
    FIXED_HOLIDAYS = {
      '01-01' => { name: 'Tahun Baru Masehi', name_en: "New Year's Day", type: :national },
      '05-01' => { name: 'Hari Buruh Internasional', name_en: 'Labour Day', type: :national },
      '06-01' => { name: 'Hari Lahir Pancasila', name_en: 'Pancasila Day', type: :national },
      '08-17' => { name: 'Hari Kemerdekaan RI', name_en: 'Independence Day', type: :national },
      '12-25' => { name: 'Hari Raya Natal', name_en: 'Christmas Day', type: :national },
      '12-31' => { name: 'Malam Tahun Baru', name_en: "New Year's Eve", type: :national }
    }.freeze

    ISLAMIC_HOLIDAYS = {
      '1-1' => { name: 'Tahun Baru Hijriah', name_en: 'Islamic New Year', type: :religious },
      '10-1' => { name: 'Hari Raya Idul Fitri', name_en: 'Eid al-Fitr', type: :religious },
      '10-2' => { name: 'Hari Raya Idul Fitri Cuti Bersama', name_en: 'Eid al-Fitr (Shared Leave)', type: :religious },
      '12-10' => { name: 'Hari Raya Kurban (Idul Adha)', name_en: 'Eid al-Adha', type: :religious },
      '3-12' => { name: 'Maulid Nabi Muhammad SAW', name_en: "Prophet's Birthday", type: :religious },
      '9-1' => { name: 'Awal Ramadhan', name_en: 'Start of Ramadan', type: :religious },
      '7-27' => { name: 'Isra Mikraj Nabi Muhammad SAW', name_en: "Isra and Mi'raj", type: :religious },
      '1-10' => { name: 'Hari Asyura', name_en: 'Day of Ashura', type: :religious, optional: true }
    }.freeze

    CHINESE_HOLIDAYS = {
      '1-1' => { name: 'Tahun Baru Imlek', name_en: 'Chinese New Year', type: :cultural },
      '1-15' => { name: 'Cap Go Meh', name_en: 'Lantern Festival', type: :cultural }
    }.freeze

    HINDU_HOLIDAYS = {
      'nyepi' => { name: 'Hari Suci Nyepi', name_en: 'Day of Silence', type: :religious }
    }.freeze

    CHRISTIAN_HOLIDAYS = {
      'good_friday' => { name: 'Wafat Yesus Kristus (Jumat Agung)', name_en: 'Good Friday', type: :religious },
      'easter' => { name: 'Hari Paskah', name_en: 'Easter Sunday', type: :religious },
      'ascension' => { name: 'Kenaikan Yesus Kristus', name_en: 'Ascension Day', type: :religious },
      'vesak' => { name: 'Hari Raya Waisak', name_en: 'Vesak Day', type: :religious }
    }.freeze

    ISLAMIC_YEAR_OFFSET = 579

    ISLAMIC_DATES = {
      2024 => {
        '1-1' => { month: 7, day: 8 },
        '3-12' => { month: 9, day: 15 },
        '7-27' => { month: 1, day: 26 },
        '9-1' => { month: 3, day: 11 },
        '10-1' => { month: 4, day: 10 },
        '10-2' => { month: 4, day: 11 },
        '12-10' => { month: 6, day: 17 }
      },
      2025 => {
        '1-1' => { month: 7, day: 7 },
        '3-12' => { month: 9, day: 5 },
        '7-27' => { month: 1, day: 15 },
        '9-1' => { month: 3, day: 1 },
        '10-1' => { month: 4, day: 1 },
        '10-2' => { month: 4, day: 2 },
        '12-10' => { month: 6, day: 7 }
      },
      2026 => {
        '1-1' => { month: 6, day: 26 },
        '3-12' => { month: 8, day: 25 },
        '7-27' => { month: 1, day: 5 },
        '9-1' => { month: 2, day: 18 },
        '10-1' => { month: 3, day: 20 },
        '10-2' => { month: 3, day: 21 },
        '12-10' => { month: 5, day: 27 }
      },
      2027 => {
        '1-1' => { month: 6, day: 16 },
        '3-12' => { month: 8, day: 14 },
        '7-27' => { month: 1, day: 6 },
        '9-1' => { month: 2, day: 8 },
        '10-1' => { month: 3, day: 10 },
        '10-2' => { month: 3, day: 11 },
        '12-10' => { month: 5, day: 16 }
      },
      2028 => {
        '1-1' => { month: 7, day: 5 },
        '3-12' => { month: 9, day: 3 },
        '7-27' => { month: 1, day: 25 },
        '9-1' => { month: 2, day: 27 },
        '10-1' => { month: 3, day: 28 },
        '10-2' => { month: 3, day: 29 },
        '12-10' => { month: 6, day: 5 }
      },
      2029 => {
        '1-1' => { month: 6, day: 24 },
        '3-12' => { month: 8, day: 22 },
        '7-27' => { month: 1, day: 14 },
        '9-1' => { month: 2, day: 16 },
        '10-1' => { month: 3, day: 18 },
        '10-2' => { month: 3, day: 19 },
        '12-10' => { month: 5, day: 25 }
      },
      2030 => {
        '1-1' => { month: 6, day: 14 },
        '3-12' => { month: 8, day: 12 },
        '7-27' => { month: 1, day: 4 },
        '9-1' => { month: 2, day: 6 },
        '10-1' => { month: 3, day: 8 },
        '10-2' => { month: 3, day: 9 },
        '12-10' => { month: 5, day: 15 }
      }
    }.freeze

    CNY_DATES = {
      2024 => Date.new(2024, 2, 10),
      2025 => Date.new(2025, 1, 29),
      2026 => Date.new(2026, 2, 17),
      2027 => Date.new(2027, 2, 6),
      2028 => Date.new(2028, 1, 26),
      2029 => Date.new(2029, 2, 13),
      2030 => Date.new(2030, 2, 3)
    }.freeze

    NYEPI_DATES = {
      2024 => Date.new(2024, 3, 9),
      2025 => Date.new(2025, 3, 29),
      2026 => Date.new(2026, 3, 19),
      2027 => Date.new(2027, 3, 9),
      2028 => Date.new(2028, 3, 28),
      2029 => Date.new(2029, 3, 17),
      2030 => Date.new(2030, 3, 7)
    }.freeze

    VESAK_DATES = {
      2024 => Date.new(2024, 5, 23),
      2025 => Date.new(2025, 5, 13),
      2026 => Date.new(2026, 5, 2),
      2027 => Date.new(2027, 5, 20),
      2028 => Date.new(2028, 5, 9),
      2029 => Date.new(2029, 4, 28),
      2030 => Date.new(2030, 5, 17)
    }.freeze

    def self.fixed_holiday(date)
      key = "#{date.month.to_s.rjust(2, '0')}-#{date.day.to_s.rjust(2, '0')}"
      FIXED_HOLIDAYS[key]
    end

    def self.islamic_holiday(year)
      hijri_year = year - ISLAMIC_YEAR_OFFSET
      holidays = {}

      begin
        require 'hijri'
        ISLAMIC_HOLIDAYS.each do |hijri_key, holiday_info|
          month, day = hijri_key.split('-').map(&:to_i)

          begin
            hijri_date = Hijri::Date.new(hijri_year, month, day)
            gregorian_date = hijri_date.to_gregorian

            key = "#{gregorian_date.month}-#{gregorian_date.day}"
            holidays[key] = holiday_info.merge(hijri_date: "#{day} #{hijri_month_name(month)} #{hijri_year}H")
          rescue StandardError
          end
        end
        return holidays unless holidays.empty?
      rescue LoadError
      end

      if ISLAMIC_DATES.key?(year)
        ISLAMIC_DATES[year].each do |hijri_key, gregorian|
          day = hijri_key.split('-').last
          holiday_info = ISLAMIC_HOLIDAYS[hijri_key]
          next unless holiday_info

          key = "#{gregorian[:month]}-#{gregorian[:day]}"
          holidays[key] =
            holiday_info.merge(hijri_date: "#{day} #{hijri_month_name(hijri_key.split('-').first.to_i)} #{hijri_year}H")
        end
      end

      holidays
    end

    def self.chinese_new_year(year)
      CNY_DATES[year]
    end

    def self.nyepi_date(year)
      NYEPI_DATES[year]
    end

    def self.vesak_date(year)
      VESAK_DATES[year]
    end

    def self.good_friday(year)
      calculate_easter(year) - 2
    end

    def self.easter_sunday(year)
      calculate_easter(year)
    end

    def self.ascension_day(year)
      calculate_easter(year) + 39
    end

    def self.calculate_easter(year)
      a = year % 19
      b = year / 100
      c = year % 100
      d = b / 4
      e = b % 4
      f = (b + 8) / 25
      g = (b - f + 1) / 3
      h = (19 * a + b - d - g + 15) % 30
      i = c / 4
      k = c % 4
      l = (32 + 2 * e + 2 * i - h - k) % 7
      m = (a + 11 * h + 22 * l) / 451
      month = (h + l - 7 * m + 114) / 31
      day = ((h + l - 7 * m + 114) % 31) + 1

      Date.new(year, month, day)
    end

    def self.hijri_month_name(month)
      names = {
        1 => 'Muharram', 2 => 'Safar', 3 => "Rabi' al-Awwal",
        4 => "Rabi' al-Thani", 5 => 'Jumada al-Awwal', 6 => 'Jumada al-Thani',
        7 => 'Rajab', 8 => "Sha'ban", 9 => 'Ramadan',
        10 => 'Shawwal', 11 => "Dhu al-Qi'dah", 12 => 'Dhu al-Hijjah'
      }
      names[month]
    end

    def self.all_holidays_for_year(year)
      holidays = {}

      FIXED_HOLIDAYS.each do |key, info|
        month, day = key.split('-').map(&:to_i)
        date = Date.new(year, month, day)
        holidays[date] = info
      end

      begin
        islamic = islamic_holiday(year)
        islamic.each do |key, info|
          month, day = key.split('-').map(&:to_i)
          date = Date.new(year, month, day)
          holidays[date] = info
        end
      rescue StandardError
      end

      cny = chinese_new_year(year)
      if cny
        holidays[cny] = CHINESE_HOLIDAYS['1-1']
        cap_go_meh = cny + 14
        holidays[cap_go_meh] = CHINESE_HOLIDAYS['1-15']
      end

      nyepi = nyepi_date(year)
      holidays[nyepi] = HINDU_HOLIDAYS['nyepi'] if nyepi

      vesak = vesak_date(year)
      holidays[vesak] = CHRISTIAN_HOLIDAYS['vesak'] if vesak

      good_friday = self.good_friday(year)
      holidays[good_friday] = CHRISTIAN_HOLIDAYS['good_friday']

      easter = easter_sunday(year)
      holidays[easter] = CHRISTIAN_HOLIDAYS['easter']

      ascension = ascension_day(year)
      holidays[ascension] = CHRISTIAN_HOLIDAYS['ascension']

      holidays.sort.to_h
    end

    def self.holidays_for_month(year, month)
      all_holidays = all_holidays_for_year(year)
      all_holidays.select { |date, _| date.month == month }
    end
  end
end
