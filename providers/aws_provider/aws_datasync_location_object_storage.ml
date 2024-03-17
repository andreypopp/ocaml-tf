(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_datasync_location_object_storage = {
  access_key : string prop option; [@option]  (** access_key *)
  agent_arns : string prop list;  (** agent_arns *)
  bucket_name : string prop;  (** bucket_name *)
  id : string prop option; [@option]  (** id *)
  secret_key : string prop option; [@option]  (** secret_key *)
  server_certificate : string prop option; [@option]
      (** server_certificate *)
  server_hostname : string prop;  (** server_hostname *)
  server_port : float prop option; [@option]  (** server_port *)
  server_protocol : string prop option; [@option]
      (** server_protocol *)
  subdirectory : string prop option; [@option]  (** subdirectory *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_datasync_location_object_storage *)

let aws_datasync_location_object_storage ?access_key ?id ?secret_key
    ?server_certificate ?server_port ?server_protocol ?subdirectory
    ?tags ?tags_all ~agent_arns ~bucket_name ~server_hostname
    __resource_id =
  let __resource_type = "aws_datasync_location_object_storage" in
  let __resource =
    {
      access_key;
      agent_arns;
      bucket_name;
      id;
      secret_key;
      server_certificate;
      server_hostname;
      server_port;
      server_protocol;
      subdirectory;
      tags;
      tags_all;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_datasync_location_object_storage __resource);
  ()
