def humanized_time_ago(minute_num)
    if minute_num >= 60
        "#{minute_num / 60} hours ago"
    elsif minute_num < 60 && minute_num > 1
        "#{minute_num} minutes ago"
    else minute_num <= 1
        "just a moment ago"
    end
end

get '/' do
    @cutestagram_post_ayf = {
        username: "Ayanfemi",
        avatar_url: "/images/user_icon/sola.jpg",
        photo_url: "/images/img_09.JPG",
        humanized_time_ago: humanized_time_ago(150),
        like_count: 0,
        comment_count: 1,
        comments: [
            {username: "Ayanfemi", text: "Hmmm... trying out laptop for the first time."},
            {username: "Ayanfemi_2", text: "trying out ruby i guess."}
        ]
    }

    @cutestagram_post_gramz = {
        username: "Gramz",
        avatar_url: "/images/user_icon/ayanfe.jpg",
        photo_url: "/images/img_02.JPG",
        humanized_time_ago: humanized_time_ago(0),
        like_count: 0,
        comment_count: 1,
        comments: [{
            username: "Gramz",
            text: "needed help holding it up... lol"
        }]
    }

    @cutestagram_post_wizzie = {
        username: "wizzie",
        avatar_url: "/images/user_icon/shemilolola.jpg",
        photo_url: "/images/img_01.JPG",
        humanized_time_ago: humanized_time_ago(623),
        like_count: 0,
        comment_count: 1,
        comments: [{
            username: "wizzie",
            text: "awwww... it is the smile for me #charming"
        }]
    }

    @cutestagram_posts = [@cutestagram_post_ayf, @cutestagram_post_gramz, @cutestagram_post_wizzie]

    erb :index
end