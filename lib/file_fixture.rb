module FileFixture
  FIXTURE_DIR = nil
  
  def file_fixture(name)
    if FIXTURE_DIR
      File.read(File.join(::FileFixture::FIXTURE_DIR, name))
    else
      raise "FileFixture::FIXTURE_DIR needs to be defined"
    end
  end
end