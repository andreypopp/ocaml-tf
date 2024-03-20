(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?compliance_type ?description ?tags ~name ~control_sets __id
    =
  let __type = "aws_auditmanager_framework" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       compliance_type = Prop.computed __type __id "compliance_type";
       description = Prop.computed __type __id "description";
       framework_type = Prop.computed __type __id "framework_type";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_auditmanager_framework
        (aws_auditmanager_framework ?compliance_type ?description
           ?tags ~name ~control_sets ());
    attrs = __attrs;
  }

let register ?tf_module ?compliance_type ?description ?tags ~name
    ~control_sets __id =
  let (r : _ Tf_core.resource) =
    make ?compliance_type ?description ?tags ~name ~control_sets __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
