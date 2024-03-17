(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_fsx_backup__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_fsx_backup__timeouts *)

type aws_fsx_backup = {
  file_system_id : string prop option; [@option]
      (** file_system_id *)
  id : string prop option; [@option]  (** id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  volume_id : string prop option; [@option]  (** volume_id *)
  timeouts : aws_fsx_backup__timeouts option;
}
[@@deriving yojson_of]
(** aws_fsx_backup *)

let aws_fsx_backup ?file_system_id ?id ?tags ?tags_all ?volume_id
    ?timeouts __resource_id =
  let __resource_type = "aws_fsx_backup" in
  let __resource =
    { file_system_id; id; tags; tags_all; volume_id; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_fsx_backup __resource);
  ()
