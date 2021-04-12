class TitleValidator < ActiveModel::Validator 
    def validate(record)
        if record.title == nil
        else
        unless record.title.match?(/Won't Believe|Secret|Top[number]|Guess/)
            record.errors[:title] << "Title is not clickbaity enough"
        end
    end
    end
end