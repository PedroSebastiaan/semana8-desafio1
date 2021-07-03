# CREATE CLASS
class BankAcc

    #GETTER & SETTER
    attr_accessor :username
    attr_reader :accnumber, :vip

    # METHODS
    def initialize (username, accnumber, vip)
        @username = username
        obtain_accnumber(accnumber)
        turn_vip(vip)
    end

    def obtain_accnumber(number)
        if number.digits.count != 8
            raise RangeError, "Just 8 numbers"
        else
            @accnumber = number
        end
    end

    def turn_vip(vip)
        if vip == 0 || vip == 1
            @vip = vip
        else
            raise RangeError, "just 0 or 1"
        end    
    end

    def verify_accnumber
        "#{self.vip}-#{self.accnumber}"
    end
end

p1 = BankAcc.new("PEDRO", 12345678, 0)
puts p1.verify_accnumber
