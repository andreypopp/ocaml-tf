(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_datasync_location_nfs__mount_options = {
  version : string prop option; [@option]  (** version *)
}
[@@deriving yojson_of]
(** aws_datasync_location_nfs__mount_options *)

type aws_datasync_location_nfs__on_prem_config = {
  agent_arns : string prop list;  (** agent_arns *)
}
[@@deriving yojson_of]
(** aws_datasync_location_nfs__on_prem_config *)

type aws_datasync_location_nfs = {
  id : string prop option; [@option]  (** id *)
  server_hostname : string prop;  (** server_hostname *)
  subdirectory : string prop;  (** subdirectory *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  mount_options : aws_datasync_location_nfs__mount_options list;
  on_prem_config : aws_datasync_location_nfs__on_prem_config list;
}
[@@deriving yojson_of]
(** aws_datasync_location_nfs *)

type t = {
  arn : string prop;
  id : string prop;
  server_hostname : string prop;
  subdirectory : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  uri : string prop;
}

let aws_datasync_location_nfs ?id ?tags ?tags_all ~server_hostname
    ~subdirectory ~mount_options ~on_prem_config __resource_id =
  let __resource_type = "aws_datasync_location_nfs" in
  let __resource =
    ({
       id;
       server_hostname;
       subdirectory;
       tags;
       tags_all;
       mount_options;
       on_prem_config;
     }
      : aws_datasync_location_nfs)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_datasync_location_nfs __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       id = Prop.computed __resource_type __resource_id "id";
       server_hostname =
         Prop.computed __resource_type __resource_id
           "server_hostname";
       subdirectory =
         Prop.computed __resource_type __resource_id "subdirectory";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       uri = Prop.computed __resource_type __resource_id "uri";
     }
      : t)
  in
  __resource_attributes
