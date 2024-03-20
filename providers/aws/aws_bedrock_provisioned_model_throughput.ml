(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_bedrock_provisioned_model_throughput = {
  commitment_duration : string prop option; [@option]
      (** commitment_duration *)
  model_arn : string prop;  (** model_arn *)
  model_units : float prop;  (** model_units *)
  provisioned_model_name : string prop;
      (** provisioned_model_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_bedrock_provisioned_model_throughput *)

let timeouts ?create () : timeouts = { create }

let aws_bedrock_provisioned_model_throughput ?commitment_duration
    ?tags ?timeouts ~model_arn ~model_units ~provisioned_model_name
    () : aws_bedrock_provisioned_model_throughput =
  {
    commitment_duration;
    model_arn;
    model_units;
    provisioned_model_name;
    tags;
    timeouts;
  }

type t = {
  commitment_duration : string prop;
  id : string prop;
  model_arn : string prop;
  model_units : float prop;
  provisioned_model_arn : string prop;
  provisioned_model_name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?commitment_duration ?tags ?timeouts ~model_arn ~model_units
    ~provisioned_model_name __id =
  let __type = "aws_bedrock_provisioned_model_throughput" in
  let __attrs =
    ({
       commitment_duration =
         Prop.computed __type __id "commitment_duration";
       id = Prop.computed __type __id "id";
       model_arn = Prop.computed __type __id "model_arn";
       model_units = Prop.computed __type __id "model_units";
       provisioned_model_arn =
         Prop.computed __type __id "provisioned_model_arn";
       provisioned_model_name =
         Prop.computed __type __id "provisioned_model_name";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_bedrock_provisioned_model_throughput
        (aws_bedrock_provisioned_model_throughput
           ?commitment_duration ?tags ?timeouts ~model_arn
           ~model_units ~provisioned_model_name ());
    attrs = __attrs;
  }

let register ?tf_module ?commitment_duration ?tags ?timeouts
    ~model_arn ~model_units ~provisioned_model_name __id =
  let (r : _ Tf_core.resource) =
    make ?commitment_duration ?tags ?timeouts ~model_arn ~model_units
      ~provisioned_model_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
