(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_datasync_location_object_storage = {
  access_key : string option; [@option]  (** access_key *)
  agent_arns : string list;  (** agent_arns *)
  bucket_name : string;  (** bucket_name *)
  secret_key : string option; [@option]  (** secret_key *)
  server_certificate : string option; [@option]
      (** server_certificate *)
  server_hostname : string;  (** server_hostname *)
  server_port : float option; [@option]  (** server_port *)
  server_protocol : string option; [@option]  (** server_protocol *)
  tags : (string * string) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** aws_datasync_location_object_storage *)

let aws_datasync_location_object_storage ?access_key ?secret_key
    ?server_certificate ?server_port ?server_protocol ?tags
    ~agent_arns ~bucket_name ~server_hostname __resource_id =
  let __resource_type = "aws_datasync_location_object_storage" in
  let __resource =
    {
      access_key;
      agent_arns;
      bucket_name;
      secret_key;
      server_certificate;
      server_hostname;
      server_port;
      server_protocol;
      tags;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_datasync_location_object_storage __resource);
  ()
