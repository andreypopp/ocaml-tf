(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type attribute__value = { source : string prop list  (** source *) }
[@@deriving yojson_of]
(** attribute__value *)

type attribute = {
  key : string prop;  (** key *)
  value : attribute__value list;
}
[@@deriving yojson_of]
(** attribute *)

type aws_ssoadmin_instance_access_control_attributes = {
  id : string prop option; [@option]  (** id *)
  instance_arn : string prop;  (** instance_arn *)
  attribute : attribute list;
}
[@@deriving yojson_of]
(** aws_ssoadmin_instance_access_control_attributes *)

let attribute__value ~source () : attribute__value = { source }
let attribute ~key ~value () : attribute = { key; value }

let aws_ssoadmin_instance_access_control_attributes ?id ~instance_arn
    ~attribute () : aws_ssoadmin_instance_access_control_attributes =
  { id; instance_arn; attribute }

type t = {
  id : string prop;
  instance_arn : string prop;
  status : string prop;
  status_reason : string prop;
}

let make ?id ~instance_arn ~attribute __id =
  let __type = "aws_ssoadmin_instance_access_control_attributes" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       instance_arn = Prop.computed __type __id "instance_arn";
       status = Prop.computed __type __id "status";
       status_reason = Prop.computed __type __id "status_reason";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ssoadmin_instance_access_control_attributes
        (aws_ssoadmin_instance_access_control_attributes ?id
           ~instance_arn ~attribute ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~instance_arn ~attribute __id =
  let (r : _ Tf_core.resource) =
    make ?id ~instance_arn ~attribute __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
