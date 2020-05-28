resource "aws_key_pair" "this" {
  key_name   = "${var.project}-default"
  public_key = file("${path.module}/instance-public.key")
}
resource "aws_instance" "webserver" {
  count         = var.ec2_enable_cluster ? 0 : 1
  ami           = data.aws_ami.ubuntu-18_04.id
  instance_type = var.ec2_instance_type
  key_name      = aws_key_pair.this.key_name
  subnet_id     = aws_subnet.public[0].id
  vpc_security_group_ids = [
    aws_security_group.webserver.id
  ]
  associate_public_id_address = true
  tags = merge(
    local.common_tags,
    {
      "Name" = "${var.project}-webserver"
      "OS"   = "Ubuntu Linux"
    }
  )
}
