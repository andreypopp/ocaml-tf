(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_pinpoint_baidu_channel = {
  api_key : string prop;  (** api_key *)
  application_id : string prop;  (** application_id *)
  enabled : bool prop option; [@option]  (** enabled *)
  id : string prop option; [@option]  (** id *)
  secret_key : string prop;  (** secret_key *)
}
[@@deriving yojson_of]
(** aws_pinpoint_baidu_channel *)

let aws_pinpoint_baidu_channel ?enabled ?id ~api_key ~application_id
    ~secret_key () : aws_pinpoint_baidu_channel =
  { api_key; application_id; enabled; id; secret_key }

type t = {
  api_key : string prop;
  application_id : string prop;
  enabled : bool prop;
  id : string prop;
  secret_key : string prop;
}

let make ?enabled ?id ~api_key ~application_id ~secret_key __id =
  let __type = "aws_pinpoint_baidu_channel" in
  let __attrs =
    ({
       api_key = Prop.computed __type __id "api_key";
       application_id = Prop.computed __type __id "application_id";
       enabled = Prop.computed __type __id "enabled";
       id = Prop.computed __type __id "id";
       secret_key = Prop.computed __type __id "secret_key";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_pinpoint_baidu_channel
        (aws_pinpoint_baidu_channel ?enabled ?id ~api_key
           ~application_id ~secret_key ());
    attrs = __attrs;
  }

let register ?tf_module ?enabled ?id ~api_key ~application_id
    ~secret_key __id =
  let (r : _ Tf_core.resource) =
    make ?enabled ?id ~api_key ~application_id ~secret_key __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
