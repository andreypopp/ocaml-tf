(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type additional_configuration = {
  name : string prop;  (** name *)
  status : string prop;  (** status *)
}
[@@deriving yojson_of]
(** additional_configuration *)

type aws_guardduty_detector_feature = {
  detector_id : string prop;  (** detector_id *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  status : string prop;  (** status *)
  additional_configuration : additional_configuration list;
}
[@@deriving yojson_of]
(** aws_guardduty_detector_feature *)

let additional_configuration ~name ~status () :
    additional_configuration =
  { name; status }

let aws_guardduty_detector_feature ?id ~detector_id ~name ~status
    ~additional_configuration () : aws_guardduty_detector_feature =
  { detector_id; id; name; status; additional_configuration }

type t = {
  detector_id : string prop;
  id : string prop;
  name : string prop;
  status : string prop;
}

let make ?id ~detector_id ~name ~status ~additional_configuration
    __id =
  let __type = "aws_guardduty_detector_feature" in
  let __attrs =
    ({
       detector_id = Prop.computed __type __id "detector_id";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       status = Prop.computed __type __id "status";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_guardduty_detector_feature
        (aws_guardduty_detector_feature ?id ~detector_id ~name
           ~status ~additional_configuration ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~detector_id ~name ~status
    ~additional_configuration __id =
  let (r : _ Tf_core.resource) =
    make ?id ~detector_id ~name ~status ~additional_configuration
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
