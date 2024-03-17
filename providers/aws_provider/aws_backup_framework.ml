(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_backup_framework__control__input_parameter = {
  name : string prop option; [@option]  (** name *)
  value : string prop option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** aws_backup_framework__control__input_parameter *)

type aws_backup_framework__control__scope = {
  compliance_resource_ids : string prop list option; [@option]
      (** compliance_resource_ids *)
  compliance_resource_types : string prop list option; [@option]
      (** compliance_resource_types *)
  tags : (string * string prop) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** aws_backup_framework__control__scope *)

type aws_backup_framework__control = {
  name : string prop;  (** name *)
  input_parameter :
    aws_backup_framework__control__input_parameter list;
  scope : aws_backup_framework__control__scope list;
}
[@@deriving yojson_of]
(** aws_backup_framework__control *)

type aws_backup_framework__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_backup_framework__timeouts *)

type aws_backup_framework = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  control : aws_backup_framework__control list;
  timeouts : aws_backup_framework__timeouts option;
}
[@@deriving yojson_of]
(** aws_backup_framework *)

let aws_backup_framework ?description ?id ?tags ?tags_all ?timeouts
    ~name ~control __resource_id =
  let __resource_type = "aws_backup_framework" in
  let __resource =
    { description; id; name; tags; tags_all; control; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_backup_framework __resource);
  ()
