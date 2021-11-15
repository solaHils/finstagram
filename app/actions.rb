# def humanized_time_ago(minute_num)
#     if minute_num >= 60
#         "#{minute_num / 60} hours ago"
#     elsif minute_num < 60 && minute_num > 1
#         "#{minute_num} minutes ago"
#     else minute_num <= 1
#         "just a moment ago"
#     end
# end

# get '/' do
#     # File.read(File.join('app/views', 'index.html'))
#     cutestagram_post_ayf = {
#         username: "Ayanfemi",
#         avatar_url: "/images/user_icon/sola.jpg",
#         photo_url: "/images/img_09.JPG",
#         humanized_time_ago: humanized_time_ago(150),
#         like_count: 0,
#         comment_count: 1,
#         comments: [{
#             username: "Ayanfemi",
#             text: "Hmmm... trying out laptop for the first time."
#         }]
#     }

#     cutestagram_post_gramz = {
#         username: "Gramz",
#         avatar_url: "/images/user_icon/ayanfe.jpg",
#         photo_url: "/images/img_02.JPG",
#         humanized_time_ago: humanized_time_ago(0),
#         like_count: 0,
#         comment_count: 1,
#         comments: [{
#             username: "Gramz",
#             text: "needed help holding it up... lol"
#         }]
#     }

#     cutestagram_post_wizzie = {
#         username: "wizzie",
#         avatar_url: "/images/user_icon/shemilolola.jpg",
#         photo_url: "/images/img_01.JPG",
#         humanized_time_ago: humanized_time_ago(623),
#         like_count: 0,
#         comment_count: 1,
#         comments: [{
#             username: "wizzie",
#             text: "awwww... its the smile for me #charming"
#         }]
#     }

#     [cutestagram_post_ayf, cutestagram_post_gramz, cutestagram_post_wizzie].to_s

# end


def number_tester (number_to_test)
    if number_to_test % 3 == 0 && number_to_test % 5 == 0
        "FizzBuzz"
    elsif number_to_test % 5 == 0
        "Buzz"
    elsif number_to_test % 3 == 0
        "Fizz"
    else
        "#{number_to_test}"
    end
end

get '/' do
    # i = 0
    # number_list = *(1..10)
    # loop do
    #     number_tester (number_list[i])
    #     i = i + 1
    # end
    File.read(File.join('app/views', 'index.html'))
end