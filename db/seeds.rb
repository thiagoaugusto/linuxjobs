5.times do |index|
    job = Job.new
    job.company = "Company #{index}"
    job.title = "Title #{index}"
    job.location = "Location #{index}"
    job.description = "Description #{index}"
    job.skills = "Skills #{index}"

    job.save
end