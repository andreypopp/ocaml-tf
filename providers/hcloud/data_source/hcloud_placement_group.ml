(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type hcloud_placement_group = {
  id : float prop option; [@option]
  labels : (string * string prop) list option; [@option]
  most_recent : bool prop option; [@option]
  name : string prop option; [@option]
  type_ : string prop option; [@option] [@key "type"]
  with_selector : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : hcloud_placement_group) -> ()

let yojson_of_hcloud_placement_group =
  (function
   | {
       id = v_id;
       labels = v_labels;
       most_recent = v_most_recent;
       name = v_name;
       type_ = v_type_;
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
         match v_type_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type", arg in
             bnd :: bnds
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
         match v_most_recent with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "most_recent", arg in
             bnd :: bnds
       in
       let bnds =
         match v_labels with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "labels", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : hcloud_placement_group -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_hcloud_placement_group

[@@@deriving.end]

let hcloud_placement_group ?id ?labels ?most_recent ?name ?type_
    ?with_selector () : hcloud_placement_group =
  { id; labels; most_recent; name; type_; with_selector }

type t = {
  id : float prop;
  labels : (string * string) list prop;
  most_recent : bool prop;
  name : string prop;
  servers : float list prop;
  type_ : string prop;
  with_selector : string prop;
}

let make ?id ?labels ?most_recent ?name ?type_ ?with_selector __id =
  let __type = "hcloud_placement_group" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       most_recent = Prop.computed __type __id "most_recent";
       name = Prop.computed __type __id "name";
       servers = Prop.computed __type __id "servers";
       type_ = Prop.computed __type __id "type";
       with_selector = Prop.computed __type __id "with_selector";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_hcloud_placement_group
        (hcloud_placement_group ?id ?labels ?most_recent ?name ?type_
           ?with_selector ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?labels ?most_recent ?name ?type_
    ?with_selector __id =
  let (r : _ Tf_core.resource) =
    make ?id ?labels ?most_recent ?name ?type_ ?with_selector __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
