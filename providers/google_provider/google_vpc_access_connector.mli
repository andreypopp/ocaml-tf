(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_vpc_access_connector__subnet
type google_vpc_access_connector__timeouts
type google_vpc_access_connector

val google_vpc_access_connector :
  ?id:string prop ->
  ?ip_cidr_range:string prop ->
  ?machine_type:string prop ->
  ?max_instances:float prop ->
  ?max_throughput:float prop ->
  ?min_instances:float prop ->
  ?min_throughput:float prop ->
  ?network:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?timeouts:google_vpc_access_connector__timeouts ->
  name:string prop ->
  subnet:google_vpc_access_connector__subnet list ->
  string ->
  unit
