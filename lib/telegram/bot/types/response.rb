# frozen_string_literal: true

module Telegram
  module Bot
    module Types
      module Response
        module_function

        WRAPPED_METHODS = {
          # Generated with bin/fetch-telegram-methods
          # Bot API 3.5.

          getUpdates: [Update],
          # setWebhook
          # deleteWebhook
          getWebhookInfo: WebhookInfo,

          getMe: User,
          sendMessage: Message,
          forwardMessage: Message,
          sendPhoto: Message,
          sendAudio: Message,
          sendDocument: Message,
          sendVideo: Message,
          sendVoice: Message,
          sendVideoNote: Message,
          sendMediaGroup: Message,
          sendLocation: Message,
          editMessageLiveLocation: Message, # or true
          stopMessageLiveLocation: Message, # or true
          sendVenue: Message,
          sendContact: Message,
          # sendChatAction
          getUserProfilePhotos: UserProfilePhotos,
          getFile: File,
          # kickChatMember
          # unbanChatMember
          # restrictChatMember
          # promoteChatMember
          # exportChatInviteLink
          # setChatPhoto
          # deleteChatPhoto
          # setChatTitle
          # setChatDescription
          # pinChatMessage
          # unpinChatMessage
          # leaveChat
          getChat: Chat,
          getChatAdministrators: [ChatMember],
          # getChatMembersCount
          getChatMember: ChatMember,
          # setChatStickerSet
          # deleteChatStickerSet
          # answerCallbackQuery

          editMessageText: Message, # or true
          editMessageCaption: Message, # or true
          editMessageReplyMarkup: Message, # or true
          # deleteMessage

          sendSticker: Message,
          getStickerSet: StickerSet,
          uploadStickerFile: File,
          # createNewStickerSet
          # addStickerToSet
          # setStickerPositionInSet
          # deleteStickerFromSet

          # answerInlineQuery

          sendInvoice: Message,
          # answerShippingQuery
          # answerPreCheckoutQuery

          sendGame: Message,
          setGameScore: Message, # or true
          getGameHighScores: [GameHighScore],
        }.freeze

        # Wraps response with a given type. There are some methods that can
        # return either object ot true, so it bypasses true value as is.
        def wrap(object, type)
          return object if object == true
          if type.is_a?(Array)
            type = type.first
            object.map { |x| type.new(x) }
          else
            type.new(object)
          end
        end
      end
    end
  end
end
