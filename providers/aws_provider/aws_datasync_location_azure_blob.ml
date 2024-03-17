(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_datasync_location_azure_blob__sas_configuration = {
  token : string;  (** token *)
}
[@@deriving yojson_of]
(** aws_datasync_location_azure_blob__sas_configuration *)

type aws_datasync_location_azure_blob = {
  access_tier : string option; [@option]  (** access_tier *)
  agent_arns : string list;  (** agent_arns *)
  authentication_type : string;  (** authentication_type *)
  blob_type : string option; [@option]  (** blob_type *)
  container_url : string;  (** container_url *)
  id : string option; [@option]  (** id *)
  subdirectory : string option; [@option]  (** subdirectory *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  sas_configuration :
    aws_datasync_location_azure_blob__sas_configuration list;
}
[@@deriving yojson_of]
(** aws_datasync_location_azure_blob *)

let aws_datasync_location_azure_blob ?access_tier ?blob_type ?id
    ?subdirectory ?tags ?tags_all ~agent_arns ~authentication_type
    ~container_url ~sas_configuration __resource_id =
  let __resource_type = "aws_datasync_location_azure_blob" in
  let __resource =
    {
      access_tier;
      agent_arns;
      authentication_type;
      blob_type;
      container_url;
      id;
      subdirectory;
      tags;
      tags_all;
      sas_configuration;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_datasync_location_azure_blob __resource);
  ()
