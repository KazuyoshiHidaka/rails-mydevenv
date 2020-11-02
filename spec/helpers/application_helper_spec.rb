require 'rails_helper'

RSpec.describe ApplicationHelper, type: :helper do
  describe "#app_title" do
    subject do
      helper.app_title(page_title: page_title)
    end

    context "page_titleを与えなかった場合" do
      it "APP_NAMEを返す" do
        expect(helper.app_title).to eq ENV.fetch('APP_NAME')
      end
    end

    context "page_titleにnilを与えた場合" do
      let(:page_title) { nil }

      it "APP_NAMEを返す" do
        is_expected.to eq ENV.fetch('APP_NAME')
      end
    end

    context "page_titleに空文字を与えた場合" do
      let(:page_title) { '' }

      it "APP_NAMEを返す" do
        is_expected.to eq ENV.fetch('APP_NAME')
      end
    end

    context "page_titleに文字を与えた場合" do
      let(:page_title) { 'page_title' }

      it "'与えた文字 - APP_NAME'を返す" do
        is_expected.to eq "#{page_title} - #{ENV.fetch('APP_NAME')}"
      end
    end
  end
end
