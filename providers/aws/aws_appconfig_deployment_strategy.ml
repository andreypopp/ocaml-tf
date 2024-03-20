(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_appconfig_deployment_strategy = {
  deployment_duration_in_minutes : float prop;
      (** deployment_duration_in_minutes *)
  description : string prop option; [@option]  (** description *)
  final_bake_time_in_minutes : float prop option; [@option]
      (** final_bake_time_in_minutes *)
  growth_factor : float prop;  (** growth_factor *)
  growth_type : string prop option; [@option]  (** growth_type *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  replicate_to : string prop;  (** replicate_to *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_appconfig_deployment_strategy *)

let aws_appconfig_deployment_strategy ?description
    ?final_bake_time_in_minutes ?growth_type ?id ?tags ?tags_all
    ~deployment_duration_in_minutes ~growth_factor ~name
    ~replicate_to () : aws_appconfig_deployment_strategy =
  {
    deployment_duration_in_minutes;
    description;
    final_bake_time_in_minutes;
    growth_factor;
    growth_type;
    id;
    name;
    replicate_to;
    tags;
    tags_all;
  }

type t = {
  arn : string prop;
  deployment_duration_in_minutes : float prop;
  description : string prop;
  final_bake_time_in_minutes : float prop;
  growth_factor : float prop;
  growth_type : string prop;
  id : string prop;
  name : string prop;
  replicate_to : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?description ?final_bake_time_in_minutes ?growth_type ?id
    ?tags ?tags_all ~deployment_duration_in_minutes ~growth_factor
    ~name ~replicate_to __id =
  let __type = "aws_appconfig_deployment_strategy" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       deployment_duration_in_minutes =
         Prop.computed __type __id "deployment_duration_in_minutes";
       description = Prop.computed __type __id "description";
       final_bake_time_in_minutes =
         Prop.computed __type __id "final_bake_time_in_minutes";
       growth_factor = Prop.computed __type __id "growth_factor";
       growth_type = Prop.computed __type __id "growth_type";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       replicate_to = Prop.computed __type __id "replicate_to";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_appconfig_deployment_strategy
        (aws_appconfig_deployment_strategy ?description
           ?final_bake_time_in_minutes ?growth_type ?id ?tags
           ?tags_all ~deployment_duration_in_minutes ~growth_factor
           ~name ~replicate_to ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?final_bake_time_in_minutes
    ?growth_type ?id ?tags ?tags_all ~deployment_duration_in_minutes
    ~growth_factor ~name ~replicate_to __id =
  let (r : _ Tf_core.resource) =
    make ?description ?final_bake_time_in_minutes ?growth_type ?id
      ?tags ?tags_all ~deployment_duration_in_minutes ~growth_factor
      ~name ~replicate_to __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
