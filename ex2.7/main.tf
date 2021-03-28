terraform {
  required_version = "~> 0.14"
  // https://releases.hashicorp.com/terraform-provider-local/
  required_providers {
    local = "~> 2.1"
  }
}

resource "local_file" "literature" {
  filename = "art_of_war.txt"
  content  = <<-EOT
    Sun Tzu said: The art of ware is of vital importance to the State.

    It is a matter of life and death, a road either to safety or to
    ruin. Hence it is a subject of inquiry which can on no account be
    neglected.

    The art of war, then, is governed by five constant factors, to be
    taken into account in one's deliberations, when seeking to
    determine the conditions obtaining in the field.

    These are: (1) The Moral Law; (2) Heaven; (3) Earth; (4) The
    Commander; (5) Method and discipline.
  EOT
}
