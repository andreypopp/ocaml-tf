(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type voice_settings = {
  engine : string prop option; [@option]
  voice_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : voice_settings) -> ()

let yojson_of_voice_settings =
  (function
   | { engine = v_engine; voice_id = v_voice_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_voice_id in
         ("voice_id", arg) :: bnds
       in
       let bnds =
         match v_engine with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "engine", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : voice_settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_voice_settings

[@@@deriving.end]

type aws_lexv2models_bot_locale = {
  bot_id : string prop;
  bot_version : string prop;
  description : string prop option; [@option]
  locale_id : string prop;
  n_lu_intent_confidence_threshold : float prop;
  name : string prop option; [@option]
  timeouts : timeouts option;
  voice_settings : voice_settings list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_lexv2models_bot_locale) -> ()

let yojson_of_aws_lexv2models_bot_locale =
  (function
   | {
       bot_id = v_bot_id;
       bot_version = v_bot_version;
       description = v_description;
       locale_id = v_locale_id;
       n_lu_intent_confidence_threshold =
         v_n_lu_intent_confidence_threshold;
       name = v_name;
       timeouts = v_timeouts;
       voice_settings = v_voice_settings;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_voice_settings v_voice_settings
         in
         ("voice_settings", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float
             v_n_lu_intent_confidence_threshold
         in
         ("n_lu_intent_confidence_threshold", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_locale_id in
         ("locale_id", arg) :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bot_version in
         ("bot_version", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bot_id in
         ("bot_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_lexv2models_bot_locale -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_lexv2models_bot_locale

[@@@deriving.end]

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let voice_settings ?engine ~voice_id () : voice_settings =
  { engine; voice_id }

let aws_lexv2models_bot_locale ?description ?name ?timeouts
    ?(voice_settings = []) ~bot_id ~bot_version ~locale_id
    ~n_lu_intent_confidence_threshold () : aws_lexv2models_bot_locale
    =
  {
    bot_id;
    bot_version;
    description;
    locale_id;
    n_lu_intent_confidence_threshold;
    name;
    timeouts;
    voice_settings;
  }

type t = {
  bot_id : string prop;
  bot_version : string prop;
  description : string prop;
  id : string prop;
  locale_id : string prop;
  n_lu_intent_confidence_threshold : float prop;
  name : string prop;
}

let make ?description ?name ?timeouts ?(voice_settings = []) ~bot_id
    ~bot_version ~locale_id ~n_lu_intent_confidence_threshold __id =
  let __type = "aws_lexv2models_bot_locale" in
  let __attrs =
    ({
       bot_id = Prop.computed __type __id "bot_id";
       bot_version = Prop.computed __type __id "bot_version";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       locale_id = Prop.computed __type __id "locale_id";
       n_lu_intent_confidence_threshold =
         Prop.computed __type __id "n_lu_intent_confidence_threshold";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_lexv2models_bot_locale
        (aws_lexv2models_bot_locale ?description ?name ?timeouts
           ~voice_settings ~bot_id ~bot_version ~locale_id
           ~n_lu_intent_confidence_threshold ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?name ?timeouts
    ?(voice_settings = []) ~bot_id ~bot_version ~locale_id
    ~n_lu_intent_confidence_threshold __id =
  let (r : _ Tf_core.resource) =
    make ?description ?name ?timeouts ~voice_settings ~bot_id
      ~bot_version ~locale_id ~n_lu_intent_confidence_threshold __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
