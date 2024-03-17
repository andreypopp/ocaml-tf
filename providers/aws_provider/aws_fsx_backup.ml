(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_fsx_backup__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_fsx_backup__timeouts *)

type aws_fsx_backup = {
  file_system_id : string option; [@option]  (** file_system_id *)
  tags : (string * string) list option; [@option]  (** tags *)
  volume_id : string option; [@option]  (** volume_id *)
  timeouts : aws_fsx_backup__timeouts option;
}
[@@deriving yojson_of]
(** aws_fsx_backup *)

let aws_fsx_backup ?file_system_id ?tags ?volume_id ?timeouts
    __resource_id =
  let __resource_type = "aws_fsx_backup" in
  let __resource = { file_system_id; tags; volume_id; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_fsx_backup __resource);
  ()
