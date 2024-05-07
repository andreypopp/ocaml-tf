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

type google_eventarc_channel = {
  crypto_key_name : string prop option; [@option]
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  project : string prop option; [@option]
  third_party_provider : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_eventarc_channel) -> ()

let yojson_of_google_eventarc_channel =
  (function
   | {
       crypto_key_name = v_crypto_key_name;
       id = v_id;
       location = v_location;
       name = v_name;
       project = v_project;
       third_party_provider = v_third_party_provider;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         match v_third_party_provider with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "third_party_provider", arg in
             bnd :: bnds
       in
       let bnds =
         match v_project with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_crypto_key_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "crypto_key_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_eventarc_channel -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_eventarc_channel

[@@@deriving.end]

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_eventarc_channel ?crypto_key_name ?id ?project
    ?third_party_provider ?timeouts ~location ~name () :
    google_eventarc_channel =
  {
    crypto_key_name;
    id;
    location;
    name;
    project;
    third_party_provider;
    timeouts;
  }

type t = {
  tf_name : string;
  activation_token : string prop;
  create_time : string prop;
  crypto_key_name : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
  pubsub_topic : string prop;
  state : string prop;
  third_party_provider : string prop;
  uid : string prop;
  update_time : string prop;
}

let make ?crypto_key_name ?id ?project ?third_party_provider
    ?timeouts ~location ~name __id =
  let __type = "google_eventarc_channel" in
  let __attrs =
    ({
       tf_name = __id;
       activation_token =
         Prop.computed __type __id "activation_token";
       create_time = Prop.computed __type __id "create_time";
       crypto_key_name = Prop.computed __type __id "crypto_key_name";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       pubsub_topic = Prop.computed __type __id "pubsub_topic";
       state = Prop.computed __type __id "state";
       third_party_provider =
         Prop.computed __type __id "third_party_provider";
       uid = Prop.computed __type __id "uid";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_eventarc_channel
        (google_eventarc_channel ?crypto_key_name ?id ?project
           ?third_party_provider ?timeouts ~location ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?crypto_key_name ?id ?project
    ?third_party_provider ?timeouts ~location ~name __id =
  let (r : _ Tf_core.resource) =
    make ?crypto_key_name ?id ?project ?third_party_provider
      ?timeouts ~location ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
