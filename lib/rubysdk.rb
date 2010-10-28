require 'rubygems'
require 'bundler/setup'
require 'yajl'

module WIS; module DOM; end; module Client; end; end

$:.unshift(File.dirname(__FILE__))

require 'dom/account'
require 'dom/issue'
require 'dom/opinion'
require 'dom/evidenced_opinion'
require 'dom/approved_opinion'
require 'dom/expressed_opinion'
require 'dom/unknown_opinion'
require 'dom/unverified_opinion'
require 'dom/results'
require 'dom/account_issues'
require 'dom/account_results'
require 'dom/issue_accounts'
require 'dom/issue_results'
require 'dom/issue_result'

require 'client/access'