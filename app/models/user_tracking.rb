class UserTracking < ApplicationRecord
    validates_presence_of :cookie
    validates_presence_of :userAgent
    validates_presence_of :fingerPrint
    validates_presence_of :url
end
