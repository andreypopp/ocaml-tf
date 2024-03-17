(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_fsx_openzfs_snapshot__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_fsx_openzfs_snapshot__timeouts *)

type aws_fsx_openzfs_snapshot = {
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
  volume_id : string;  (** volume_id *)
  timeouts : aws_fsx_openzfs_snapshot__timeouts option;
}
[@@deriving yojson_of]
(** aws_fsx_openzfs_snapshot *)

let aws_fsx_openzfs_snapshot ?tags ?timeouts ~name ~volume_id
    __resource_id =
  let __resource_type = "aws_fsx_openzfs_snapshot" in
  let __resource = { name; tags; volume_id; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_fsx_openzfs_snapshot __resource);
  ()
