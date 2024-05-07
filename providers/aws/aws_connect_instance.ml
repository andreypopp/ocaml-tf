(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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

type aws_connect_instance = {
  auto_resolve_best_voices_enabled : bool prop option; [@option]
  contact_flow_logs_enabled : bool prop option; [@option]
  contact_lens_enabled : bool prop option; [@option]
  directory_id : string prop option; [@option]
  early_media_enabled : bool prop option; [@option]
  id : string prop option; [@option]
  identity_management_type : string prop;
  inbound_calls_enabled : bool prop;
  instance_alias : string prop option; [@option]
  multi_party_conference_enabled : bool prop option; [@option]
  outbound_calls_enabled : bool prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_connect_instance) -> ()

let yojson_of_aws_connect_instance =
  (function
   | {
       auto_resolve_best_voices_enabled =
         v_auto_resolve_best_voices_enabled;
       contact_flow_logs_enabled = v_contact_flow_logs_enabled;
       contact_lens_enabled = v_contact_lens_enabled;
       directory_id = v_directory_id;
       early_media_enabled = v_early_media_enabled;
       id = v_id;
       identity_management_type = v_identity_management_type;
       inbound_calls_enabled = v_inbound_calls_enabled;
       instance_alias = v_instance_alias;
       multi_party_conference_enabled =
         v_multi_party_conference_enabled;
       outbound_calls_enabled = v_outbound_calls_enabled;
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
         let arg =
           yojson_of_prop yojson_of_bool v_outbound_calls_enabled
         in
         ("outbound_calls_enabled", arg) :: bnds
       in
       let bnds =
         match v_multi_party_conference_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "multi_party_conference_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_instance_alias with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "instance_alias", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_inbound_calls_enabled
         in
         ("inbound_calls_enabled", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_identity_management_type
         in
         ("identity_management_type", arg) :: bnds
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
         match v_early_media_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "early_media_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_directory_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "directory_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_contact_lens_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "contact_lens_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_contact_flow_logs_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "contact_flow_logs_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_auto_resolve_best_voices_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "auto_resolve_best_voices_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_connect_instance -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_connect_instance

[@@@deriving.end]

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_connect_instance ?auto_resolve_best_voices_enabled
    ?contact_flow_logs_enabled ?contact_lens_enabled ?directory_id
    ?early_media_enabled ?id ?instance_alias
    ?multi_party_conference_enabled ?timeouts
    ~identity_management_type ~inbound_calls_enabled
    ~outbound_calls_enabled () : aws_connect_instance =
  {
    auto_resolve_best_voices_enabled;
    contact_flow_logs_enabled;
    contact_lens_enabled;
    directory_id;
    early_media_enabled;
    id;
    identity_management_type;
    inbound_calls_enabled;
    instance_alias;
    multi_party_conference_enabled;
    outbound_calls_enabled;
    timeouts;
  }

type t = {
  tf_name : string;
  arn : string prop;
  auto_resolve_best_voices_enabled : bool prop;
  contact_flow_logs_enabled : bool prop;
  contact_lens_enabled : bool prop;
  created_time : string prop;
  directory_id : string prop;
  early_media_enabled : bool prop;
  id : string prop;
  identity_management_type : string prop;
  inbound_calls_enabled : bool prop;
  instance_alias : string prop;
  multi_party_conference_enabled : bool prop;
  outbound_calls_enabled : bool prop;
  service_role : string prop;
  status : string prop;
}

let make ?auto_resolve_best_voices_enabled ?contact_flow_logs_enabled
    ?contact_lens_enabled ?directory_id ?early_media_enabled ?id
    ?instance_alias ?multi_party_conference_enabled ?timeouts
    ~identity_management_type ~inbound_calls_enabled
    ~outbound_calls_enabled __id =
  let __type = "aws_connect_instance" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       auto_resolve_best_voices_enabled =
         Prop.computed __type __id "auto_resolve_best_voices_enabled";
       contact_flow_logs_enabled =
         Prop.computed __type __id "contact_flow_logs_enabled";
       contact_lens_enabled =
         Prop.computed __type __id "contact_lens_enabled";
       created_time = Prop.computed __type __id "created_time";
       directory_id = Prop.computed __type __id "directory_id";
       early_media_enabled =
         Prop.computed __type __id "early_media_enabled";
       id = Prop.computed __type __id "id";
       identity_management_type =
         Prop.computed __type __id "identity_management_type";
       inbound_calls_enabled =
         Prop.computed __type __id "inbound_calls_enabled";
       instance_alias = Prop.computed __type __id "instance_alias";
       multi_party_conference_enabled =
         Prop.computed __type __id "multi_party_conference_enabled";
       outbound_calls_enabled =
         Prop.computed __type __id "outbound_calls_enabled";
       service_role = Prop.computed __type __id "service_role";
       status = Prop.computed __type __id "status";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_connect_instance
        (aws_connect_instance ?auto_resolve_best_voices_enabled
           ?contact_flow_logs_enabled ?contact_lens_enabled
           ?directory_id ?early_media_enabled ?id ?instance_alias
           ?multi_party_conference_enabled ?timeouts
           ~identity_management_type ~inbound_calls_enabled
           ~outbound_calls_enabled ());
    attrs = __attrs;
  }

let register ?tf_module ?auto_resolve_best_voices_enabled
    ?contact_flow_logs_enabled ?contact_lens_enabled ?directory_id
    ?early_media_enabled ?id ?instance_alias
    ?multi_party_conference_enabled ?timeouts
    ~identity_management_type ~inbound_calls_enabled
    ~outbound_calls_enabled __id =
  let (r : _ Tf_core.resource) =
    make ?auto_resolve_best_voices_enabled ?contact_flow_logs_enabled
      ?contact_lens_enabled ?directory_id ?early_media_enabled ?id
      ?instance_alias ?multi_party_conference_enabled ?timeouts
      ~identity_management_type ~inbound_calls_enabled
      ~outbound_calls_enabled __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
