(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type control_sets__controls = { id : string prop  (** id *) }
[@@deriving yojson_of]
(** control_sets__controls *)

type control_sets = {
  name : string prop;  (** name *)
  controls : control_sets__controls list;
}
[@@deriving yojson_of]
(** control_sets *)

type aws_auditmanager_framework = {
  compliance_type : string prop option; [@option]
      (** compliance_type *)
  description : string prop option; [@option]  (** description *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  control_sets : control_sets list;
}
[@@deriving yojson_of]
(** aws_auditmanager_framework *)

let control_sets__controls ~id () : control_sets__controls = { id }

let control_sets ~name ~controls () : control_sets =
  { name; controls }

let aws_auditmanager_framework ?compliance_type ?description ?tags
    ~name ~control_sets () : aws_auditmanager_framework =
  { compliance_type; description; name; tags; control_sets }

type t = {
  arn : string prop;
  compliance_type : string prop;
  description : string prop;
  framework_type : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let register ?tf_module ?compliance_type ?description ?tags ~name
    ~control_sets __resource_id =
  let __resource_type = "aws_auditmanager_framework" in
  let __resource =
    aws_auditmanager_framework ?compliance_type ?description ?tags
      ~name ~control_sets ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_auditmanager_framework __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       compliance_type =
         Prop.computed __resource_type __resource_id
           "compliance_type";
       description =
         Prop.computed __resource_type __resource_id "description";
       framework_type =
         Prop.computed __resource_type __resource_id "framework_type";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
