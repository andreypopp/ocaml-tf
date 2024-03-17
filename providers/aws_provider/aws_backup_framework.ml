(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_backup_framework__control__input_parameter = {
  name : string option; [@option]  (** name *)
  value : string option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** aws_backup_framework__control__input_parameter *)

type aws_backup_framework__control__scope = {
  compliance_resource_ids : string list option; [@option]
      (** compliance_resource_ids *)
  compliance_resource_types : string list option; [@option]
      (** compliance_resource_types *)
  tags : (string * string) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** aws_backup_framework__control__scope *)

type aws_backup_framework__control = {
  name : string;  (** name *)
  input_parameter :
    aws_backup_framework__control__input_parameter list;
  scope : aws_backup_framework__control__scope list;
}
[@@deriving yojson_of]
(** aws_backup_framework__control *)

type aws_backup_framework__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_backup_framework__timeouts *)

type aws_backup_framework = {
  description : string option; [@option]  (** description *)
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
  control : aws_backup_framework__control list;
  timeouts : aws_backup_framework__timeouts option;
}
[@@deriving yojson_of]
(** aws_backup_framework *)

let aws_backup_framework ?description ?tags ?timeouts ~name ~control
    __resource_id =
  let __resource_type = "aws_backup_framework" in
  let __resource = { description; name; tags; control; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_backup_framework __resource);
  ()
