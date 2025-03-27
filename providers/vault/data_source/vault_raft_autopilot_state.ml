(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_raft_autopilot_state = {
  id : string prop option; [@option]
  namespace : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_raft_autopilot_state) -> ()

let yojson_of_vault_raft_autopilot_state =
  (function
   | { id = v_id; namespace = v_namespace } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       match v_namespace with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "namespace", arg in
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
     `Assoc bnds
    : vault_raft_autopilot_state -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_raft_autopilot_state

[@@@deriving.end]

let vault_raft_autopilot_state ?id ?namespace () = ({ id; namespace } : vault_raft_autopilot_state)

type t = {
  tf_name : string;
  failure_tolerance : float prop;
  healthy : bool prop;
  id : string prop;
  leader : string prop;
  namespace : string prop;
  optimistic_failure_tolerance : float prop;
  redundancy_zones : string Tf_core.assoc prop;
  redundancy_zones_json : string prop;
  servers : string Tf_core.assoc prop;
  servers_json : string prop;
  upgrade_info : string Tf_core.assoc prop;
  upgrade_info_json : string prop;
  voters : string list prop;
}

let make ?id ?namespace __id =
  let __type = "vault_raft_autopilot_state" in
  let __attrs =
    ({
       tf_name = __id;
       failure_tolerance = Prop.computed __type __id "failure_tolerance";
       healthy = Prop.computed __type __id "healthy";
       id = Prop.computed __type __id "id";
       leader = Prop.computed __type __id "leader";
       namespace = Prop.computed __type __id "namespace";
       optimistic_failure_tolerance = Prop.computed __type __id "optimistic_failure_tolerance";
       redundancy_zones = Prop.computed __type __id "redundancy_zones";
       redundancy_zones_json = Prop.computed __type __id "redundancy_zones_json";
       servers = Prop.computed __type __id "servers";
       servers_json = Prop.computed __type __id "servers_json";
       upgrade_info = Prop.computed __type __id "upgrade_info";
       upgrade_info_json = Prop.computed __type __id "upgrade_info_json";
       voters = Prop.computed __type __id "voters";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json = yojson_of_vault_raft_autopilot_state (vault_raft_autopilot_state ?id ?namespace ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?namespace __id =
  let (r : _ Tf_core.resource) = make ?id ?namespace __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
