(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type placement_groups = {
  id : float prop;
  labels : (string * string prop) list;
  name : string prop;
  servers : float prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : placement_groups) -> ()

let yojson_of_placement_groups =
  (function
   | {
       id = v_id;
       labels = v_labels;
       name = v_name;
       servers = v_servers;
       type_ = v_type_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_servers then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_float))
               v_servers
           in
           let bnd = "servers", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_labels
         in
         ("labels", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_id in
         ("id", arg) :: bnds
       in
       `Assoc bnds
    : placement_groups -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_placement_groups

[@@@deriving.end]

type hcloud_placement_groups = {
  id : string prop option; [@option]
  most_recent : bool prop option; [@option]
  with_selector : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : hcloud_placement_groups) -> ()

let yojson_of_hcloud_placement_groups =
  (function
   | {
       id = v_id;
       most_recent = v_most_recent;
       with_selector = v_with_selector;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_with_selector with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "with_selector", arg in
             bnd :: bnds
       in
       let bnds =
         match v_most_recent with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "most_recent", arg in
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
    : hcloud_placement_groups -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_hcloud_placement_groups

[@@@deriving.end]

let hcloud_placement_groups ?id ?most_recent ?with_selector () :
    hcloud_placement_groups =
  { id; most_recent; with_selector }

type t = {
  tf_name : string;
  id : string prop;
  most_recent : bool prop;
  placement_groups : placement_groups list prop;
  with_selector : string prop;
}

let make ?id ?most_recent ?with_selector __id =
  let __type = "hcloud_placement_groups" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       most_recent = Prop.computed __type __id "most_recent";
       placement_groups =
         Prop.computed __type __id "placement_groups";
       with_selector = Prop.computed __type __id "with_selector";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_hcloud_placement_groups
        (hcloud_placement_groups ?id ?most_recent ?with_selector ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?most_recent ?with_selector __id =
  let (r : _ Tf_core.resource) =
    make ?id ?most_recent ?with_selector __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
