(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_servicequotas_template = {
  quota_code : string prop;  (** quota_code *)
  region : string prop;  (** region *)
  service_code : string prop;  (** service_code *)
  value : float prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_servicequotas_template *)

let aws_servicequotas_template ~quota_code ~region ~service_code
    ~value () : aws_servicequotas_template =
  { quota_code; region; service_code; value }

type t = {
  global_quota : bool prop;
  id : string prop;
  quota_code : string prop;
  quota_name : string prop;
  region : string prop;
  service_code : string prop;
  service_name : string prop;
  unit : string prop;
  value : float prop;
}

let make ~quota_code ~region ~service_code ~value __id =
  let __type = "aws_servicequotas_template" in
  let __attrs =
    ({
       global_quota = Prop.computed __type __id "global_quota";
       id = Prop.computed __type __id "id";
       quota_code = Prop.computed __type __id "quota_code";
       quota_name = Prop.computed __type __id "quota_name";
       region = Prop.computed __type __id "region";
       service_code = Prop.computed __type __id "service_code";
       service_name = Prop.computed __type __id "service_name";
       unit = Prop.computed __type __id "unit";
       value = Prop.computed __type __id "value";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_servicequotas_template
        (aws_servicequotas_template ~quota_code ~region ~service_code
           ~value ());
    attrs = __attrs;
  }

let register ?tf_module ~quota_code ~region ~service_code ~value __id
    =
  let (r : _ Tf_core.resource) =
    make ~quota_code ~region ~service_code ~value __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
