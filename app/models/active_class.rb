class ActiveClass < ApplicationRecord
    has_many :students
    has_many :active_classes_lists

    def check_full?
        if self.max_number > ActiveClassList.where(active_class_id:self).size
            return false
        else
            return true
        end
    end


    def number_of_students
        return ActiveClassList.where(active_class_id: self). size
    end


    def almost_full?
        if max_number - self.number_of_students == 1
            return "1석 남았습니다"
        else
            return ""
        end
    end

end
