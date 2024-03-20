(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type additional_configuration = {
  auto_enable : string prop;  (** auto_enable *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** additional_configuration *)

type aws_guardduty_organization_configuration_feature = {
  auto_enable : string prop;  (** auto_enable *)
  detector_id : string prop;  (** detector_id *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  additional_configuration : additional_configuration list;
}
[@@deriving yojson_of]
(** aws_guardduty_organization_configuration_feature *)

let additional_configuration ~auto_enable ~name () :
    additional_configuration =
  { auto_enable; name }

let aws_guardduty_organization_configuration_feature ?id ~auto_enable
    ~detector_id ~name ~additional_configuration () :
    aws_guardduty_organization_configuration_feature =
  { auto_enable; detector_id; id; name; additional_configuration }

type t = {
  auto_enable : string prop;
  detector_id : string prop;
  id : string prop;
  name : string prop;
}

let make ?id ~auto_enable ~detector_id ~name
    ~additional_configuration __id =
  let __type = "aws_guardduty_organization_configuration_feature" in
  let __attrs =
    ({
       auto_enable = Prop.computed __type __id "auto_enable";
       detector_id = Prop.computed __type __id "detector_id";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_guardduty_organization_configuration_feature
        (aws_guardduty_organization_configuration_feature ?id
           ~auto_enable ~detector_id ~name ~additional_configuration
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~auto_enable ~detector_id ~name
    ~additional_configuration __id =
  let (r : _ Tf_core.resource) =
    make ?id ~auto_enable ~detector_id ~name
      ~additional_configuration __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
