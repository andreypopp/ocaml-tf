(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_chime_voice_connector_termination = {
  calling_regions : string prop list;  (** calling_regions *)
  cidr_allow_list : string prop list;  (** cidr_allow_list *)
  cps_limit : float prop option; [@option]  (** cps_limit *)
  default_phone_number : string prop option; [@option]
      (** default_phone_number *)
  disabled : bool prop option; [@option]  (** disabled *)
  id : string prop option; [@option]  (** id *)
  voice_connector_id : string prop;  (** voice_connector_id *)
}
[@@deriving yojson_of]
(** aws_chime_voice_connector_termination *)

let aws_chime_voice_connector_termination ?cps_limit
    ?default_phone_number ?disabled ?id ~calling_regions
    ~cidr_allow_list ~voice_connector_id () :
    aws_chime_voice_connector_termination =
  {
    calling_regions;
    cidr_allow_list;
    cps_limit;
    default_phone_number;
    disabled;
    id;
    voice_connector_id;
  }

type t = {
  calling_regions : string list prop;
  cidr_allow_list : string list prop;
  cps_limit : float prop;
  default_phone_number : string prop;
  disabled : bool prop;
  id : string prop;
  voice_connector_id : string prop;
}

let make ?cps_limit ?default_phone_number ?disabled ?id
    ~calling_regions ~cidr_allow_list ~voice_connector_id __id =
  let __type = "aws_chime_voice_connector_termination" in
  let __attrs =
    ({
       calling_regions = Prop.computed __type __id "calling_regions";
       cidr_allow_list = Prop.computed __type __id "cidr_allow_list";
       cps_limit = Prop.computed __type __id "cps_limit";
       default_phone_number =
         Prop.computed __type __id "default_phone_number";
       disabled = Prop.computed __type __id "disabled";
       id = Prop.computed __type __id "id";
       voice_connector_id =
         Prop.computed __type __id "voice_connector_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_chime_voice_connector_termination
        (aws_chime_voice_connector_termination ?cps_limit
           ?default_phone_number ?disabled ?id ~calling_regions
           ~cidr_allow_list ~voice_connector_id ());
    attrs = __attrs;
  }

let register ?tf_module ?cps_limit ?default_phone_number ?disabled
    ?id ~calling_regions ~cidr_allow_list ~voice_connector_id __id =
  let (r : _ Tf_core.resource) =
    make ?cps_limit ?default_phone_number ?disabled ?id
      ~calling_regions ~cidr_allow_list ~voice_connector_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
