(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_datasync_location_nfs__mount_options = {
  version : string option; [@option]  (** version *)
}
[@@deriving yojson_of]
(** aws_datasync_location_nfs__mount_options *)

type aws_datasync_location_nfs__on_prem_config = {
  agent_arns : string list;  (** agent_arns *)
}
[@@deriving yojson_of]
(** aws_datasync_location_nfs__on_prem_config *)

type aws_datasync_location_nfs = {
  server_hostname : string;  (** server_hostname *)
  subdirectory : string;  (** subdirectory *)
  tags : (string * string) list option; [@option]  (** tags *)
  mount_options : aws_datasync_location_nfs__mount_options list;
  on_prem_config : aws_datasync_location_nfs__on_prem_config list;
}
[@@deriving yojson_of]
(** aws_datasync_location_nfs *)

let aws_datasync_location_nfs ?tags ~server_hostname ~subdirectory
    ~mount_options ~on_prem_config __resource_id =
  let __resource_type = "aws_datasync_location_nfs" in
  let __resource =
    {
      server_hostname;
      subdirectory;
      tags;
      mount_options;
      on_prem_config;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_datasync_location_nfs __resource);
  ()
