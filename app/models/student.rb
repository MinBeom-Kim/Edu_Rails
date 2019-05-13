class Student < ApplicationRecord
    has_many :active_classes
    has_many :active_classes_lists

    def enrollment_status(active_class)
        if ActiveClassList.where(student_id: self.id, active_class_id: active_class.id).exists?
            return "신청완료"
        else
            return ""
        end
    end

end
