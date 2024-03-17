(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_transfer_agreement = {
  access_role : string;  (** access_role *)
  base_directory : string;  (** base_directory *)
  description : string option; [@option]  (** description *)
  id : string option; [@option]  (** id *)
  local_profile_id : string;  (** local_profile_id *)
  partner_profile_id : string;  (** partner_profile_id *)
  server_id : string;  (** server_id *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]  (** tags_all *)
}
[@@deriving yojson_of]
(** aws_transfer_agreement *)

let aws_transfer_agreement ?description ?id ?tags ?tags_all
    ~access_role ~base_directory ~local_profile_id
    ~partner_profile_id ~server_id __resource_id =
  let __resource_type = "aws_transfer_agreement" in
  let __resource =
    {
      access_role;
      base_directory;
      description;
      id;
      local_profile_id;
      partner_profile_id;
      server_id;
      tags;
      tags_all;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_transfer_agreement __resource);
  ()
