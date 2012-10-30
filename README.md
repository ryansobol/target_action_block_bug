## README

### How to Reproduce

1. Run `rake`

2. Click the "Save" button

3. Crash

---

Sometimes there's no crash message.  Other times, I get this:

```
2012-10-30 09:45:57.301 target_action_block_bug[70307:f803] -[__NSArrayM call]: unrecognized selector sent to instance 0x8bac000
2012-10-30 09:45:57.303 target_action_block_bug[70307:f803] *** Terminating app due to uncaught exception 'NSInvalidArgumentException', reason: '-[__NSArrayM call]: unrecognized selector sent to instance 0x8bac000'
*** First throw call stack:
(0x1596022 0x17acd6 0x1597cbd 0x14fced0 0x14fccb2 0x1597e99 0x4b514e 0x6f3a0e 0x1597e99 0x4b514e 0x4b50e6 0x55bade 0x55bfa7 0x55b266 0x4da3c0 0x4da5e6 0x4c0dc4 0x4b4634 0x256fef5 0x156a195 0x14ceff2 0x14cd8da 0x14ccd84 0x14ccc9b 0x256e7d8 0x256e88a 0x4b2626 0x2a07 0x27f5)
terminate called throwing an exception
```

Does the compiler thinks the `block` local variable in `UIBarButtonItem.system` is an `__NSArrayM`?
