require 'active_support/core_ext/string/inflections'

module Telegram
  module Bot
    module Types
      %w(
        audio
        base
        callback_query
        chat
        chosen_inline_result
        contact
        document
        file
        force_reply
        inline_keyboard_button
        inline_keyboard_markup
        inline_query
        inline_query_result_article
        inline_query_result_audio
        inline_query_result_cached_audio
        inline_query_result_cached_document
        inline_query_result_cached_gif
        inline_query_result_cached_mpeg4_gif
        inline_query_result_cached_photo
        inline_query_result_cached_sticker
        inline_query_result_cached_video
        inline_query_result_cached_voice
        inline_query_result_contact
        inline_query_result_document
        inline_query_result_gif
        inline_query_result_location
        inline_query_result_mpeg4_gif
        inline_query_result_photo
        inline_query_result_venue
        inline_query_result_video
        inline_query_result_voice
        input_contact_message_content
        input_location_message_content
        input_message_content
        input_text_message_content
        input_venue_message_content
        keyboard_button
        location
        message
        message_entity
        photo_size
        reply_keyboard_hide
        reply_keyboard_markup
        sticker
        update
        user
        user_profile_photos
        venue
        version
        video
        voice
      ).each do |type|
        autoload type.camelize, "telegram/bot/types/#{type}"
      end
    end
  end
end
