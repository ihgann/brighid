WickedPdf.config = {
  #:wkhtmltopdf => '/Users/ihgann/.rvm/gems/ruby-2.1.2@rails_decal/bin/wkhtmltopdf'
  #:wkhtmltopdf => '/usr/local/bin/wkhtmltopdf' 
  #:layout => "pdf.html",
  #:exe_path => '/usr/local/bin/wkhtmltopdf'
}

if Rails.env.staging? || Rails.env.production?
  WickedPdf.config = {:exe_path => Rails.root.join('bin', 'wkhtmltopdf-amd64').to_s }
else
  WickedPdf.config = {:exe_path => '/usr/local/bin/wkhtmltopdf' }
end

