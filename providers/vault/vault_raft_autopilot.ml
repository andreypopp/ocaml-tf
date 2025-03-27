(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_raft_autopilot = {
  cleanup_dead_servers : bool prop option; [@option]
  dead_server_last_contact_threshold : string prop option; [@option]
  disable_upgrade_migration : bool prop option; [@option]
  id : string prop option; [@option]
  last_contact_threshold : string prop option; [@option]
  max_trailing_logs : float prop option; [@option]
  min_quorum : float prop option; [@option]
  namespace : string prop option; [@option]
  server_stabilization_time : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_raft_autopilot) -> ()

let yojson_of_vault_raft_autopilot =
  (function
   | {
       cleanup_dead_servers = v_cleanup_dead_servers;
       dead_server_last_contact_threshold = v_dead_server_last_contact_threshold;
       disable_upgrade_migration = v_disable_upgrade_migration;
       id = v_id;
       last_contact_threshold = v_last_contact_threshold;
       max_trailing_logs = v_max_trailing_logs;
       min_quorum = v_min_quorum;
       namespace = v_namespace;
       server_stabilization_time = v_server_stabilization_time;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       match v_server_stabilization_time with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "server_stabilization_time", arg in
         bnd :: bnds
     in
     let bnds =
       match v_namespace with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "namespace", arg in
         bnd :: bnds
     in
     let bnds =
       match v_min_quorum with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "min_quorum", arg in
         bnd :: bnds
     in
     let bnds =
       match v_max_trailing_logs with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "max_trailing_logs", arg in
         bnd :: bnds
     in
     let bnds =
       match v_last_contact_threshold with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "last_contact_threshold", arg in
         bnd :: bnds
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
       match v_disable_upgrade_migration with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "disable_upgrade_migration", arg in
         bnd :: bnds
     in
     let bnds =
       match v_dead_server_last_contact_threshold with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "dead_server_last_contact_threshold", arg in
         bnd :: bnds
     in
     let bnds =
       match v_cleanup_dead_servers with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "cleanup_dead_servers", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : vault_raft_autopilot -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_raft_autopilot

[@@@deriving.end]

let vault_raft_autopilot ?cleanup_dead_servers ?dead_server_last_contact_threshold ?disable_upgrade_migration ?id
  ?last_contact_threshold ?max_trailing_logs ?min_quorum ?namespace ?server_stabilization_time () =
  ({
     cleanup_dead_servers;
     dead_server_last_contact_threshold;
     disable_upgrade_migration;
     id;
     last_contact_threshold;
     max_trailing_logs;
     min_quorum;
     namespace;
     server_stabilization_time;
   }
    : vault_raft_autopilot)

type t = {
  tf_name : string;
  cleanup_dead_servers : bool prop;
  dead_server_last_contact_threshold : string prop;
  disable_upgrade_migration : bool prop;
  id : string prop;
  last_contact_threshold : string prop;
  max_trailing_logs : float prop;
  min_quorum : float prop;
  namespace : string prop;
  server_stabilization_time : string prop;
}

let make ?cleanup_dead_servers ?dead_server_last_contact_threshold ?disable_upgrade_migration ?id
  ?last_contact_threshold ?max_trailing_logs ?min_quorum ?namespace ?server_stabilization_time __id =
  let __type = "vault_raft_autopilot" in
  let __attrs =
    ({
       tf_name = __id;
       cleanup_dead_servers = Prop.computed __type __id "cleanup_dead_servers";
       dead_server_last_contact_threshold = Prop.computed __type __id "dead_server_last_contact_threshold";
       disable_upgrade_migration = Prop.computed __type __id "disable_upgrade_migration";
       id = Prop.computed __type __id "id";
       last_contact_threshold = Prop.computed __type __id "last_contact_threshold";
       max_trailing_logs = Prop.computed __type __id "max_trailing_logs";
       min_quorum = Prop.computed __type __id "min_quorum";
       namespace = Prop.computed __type __id "namespace";
       server_stabilization_time = Prop.computed __type __id "server_stabilization_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_raft_autopilot
        (vault_raft_autopilot ?cleanup_dead_servers ?dead_server_last_contact_threshold ?disable_upgrade_migration ?id
           ?last_contact_threshold ?max_trailing_logs ?min_quorum ?namespace ?server_stabilization_time ());
    attrs = __attrs;
  }

let register ?tf_module ?cleanup_dead_servers ?dead_server_last_contact_threshold ?disable_upgrade_migration ?id
  ?last_contact_threshold ?max_trailing_logs ?min_quorum ?namespace ?server_stabilization_time __id =
  let (r : _ Tf_core.resource) =
    make ?cleanup_dead_servers ?dead_server_last_contact_threshold ?disable_upgrade_migration ?id
      ?last_contact_threshold ?max_trailing_logs ?min_quorum ?namespace ?server_stabilization_time __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
