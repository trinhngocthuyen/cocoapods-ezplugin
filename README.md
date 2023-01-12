# cocoapods-ezplugin

[![Test](https://img.shields.io/github/workflow/status/trinhngocthuyen/cocoapods-ezplugin/test)](https://img.shields.io/github/workflow/status/trinhngocthuyen/cocoapods-ezplugin/test)
[![License](https://img.shields.io/badge/license-MIT-green.svg?style=flat&color=blue)](https://github.com/trinhngocthuyen/cocoapods-ezplugin/blob/main/LICENSE.txt)
[![Gem](https://img.shields.io/gem/v/cocoapods-ezplugin.svg?style=flat&color=blue)](https://rubygems.org/gems/cocoapods-ezplugin)

A CocoaPods plugin to reduce effort executing local plugin code in a project.

## Motivation

CocoaPods plugins are means to extend CocoaPods usage. However, the effort to create and maintain such a plugin is not optimal for iOS engineers.

Engineers sometimes place the gem code in the same project with iOS code for convenience. However, not all project contributors understand gem folder structure. They might get distracted by a scatter of non-iOS files even when only one of those files is of interest. Moreover, when creating a gem (ex. by running `bundle gem <name>`), there are many placeholders you have to fill in... just to make `bundle install` works.

This plugin helps engineers set up their (local) plugin code without caring much about how to [properly organize a gem](https://guides.rubygems.org/make-your-own-gem/). Engineers just need to write their code in a file `ezplugin.rb` in the project.

Disclaimer: If you intend to write unit tests when developing the plugin code, this may not be a good choice.

## Installation

Via Bundler:

    # In Gemfile
    gem "cocoapods-ezplugin"

Via RubyGems:

    $ gem install cocoapods-ezplugin

## Usage

Create a file `ezplugin.rb` in the project and place the code there.
